document.addEventListener("DOMContentLoaded", () => {
    console.log("app loaded");

    // Livewire.hook("component.initialized", (component) => {});
    // Livewire.hook("element.initialized", (el, component) => { });
    // Livewire.hook("element.updating", (fromEl, toEl, component) => {});
    // Livewire.hook("element.updated", (el, component) => {});
    // Livewire.hook("element.removed", (el, component) => {});
    // Livewire.hook("message.sent", (message, component) => {});
    // Livewire.hook("message.failed", (message, component) => {});
    Livewire.hook("message.received", (message, component) => {
        let access_token = message.response.serverMemo.data?.access_token;
        if (access_token) {
            window.localStorage.setItem("token", access_token);
            window.location.href = "/dashboard";
        }
    });
    // Livewire.hook("message.processed", (message, component) => {});

    document.addEventListener("turbolinks:load", function (event) {
        console.log("page loaded");
        window.livewire.start();
    });
    document.addEventListener("turbolinks:before-render", function (event) {
        window.livewire.stop();
    });
    document.addEventListener("turbolinks:render", function (event) {});
});





