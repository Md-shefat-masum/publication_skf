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

// document.addEventListener("turbolinks:load", function (event) {
    // if (window.dom_load_count > 1 && !window.dom_load_navigating) {
    //     window.livewire.restart();
    //     console.log("reload", window.dom_load_count);
    // }
    // ReviewFunctions();
    // dynamicCss();
    // setTimeout(() => {
    //     slider_reboot();
    // }, 2000);
    // scrolltotop_reboot();
    // checkout_handling();
    // window.dom_load_count++;
    // let wire_els = [...document.querySelectorAll('div.border.border-danger')]
    // wire_els.forEach(i=>{
    //     i.setAttribute('wire:key',Math.random());
    // })
// });




