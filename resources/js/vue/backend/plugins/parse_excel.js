window.ExcelToJSON = async function (file) {
    return new Promise((resolve, reject) => {
        var reader = new FileReader();

        reader.onload = function (e) {
            var data = e.target.result;
            var workbook = XLSX.read(data, {
                type: 'binary'
            });
            workbook.SheetNames.forEach(function (sheetName) {
                var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
                // console.log(XL_row_object);
                resolve(XL_row_object);
            })
        };

        reader.onerror = function (ex) {
            console.log(ex);
            reject(ex);
        };

        reader.readAsBinaryString(file);
    })
};

window.handleFileSelect = async function (evt) {
    var files = evt.target.files;
    var xl2json = await window.ExcelToJSON(files[0]);
    return xl2json;
}
