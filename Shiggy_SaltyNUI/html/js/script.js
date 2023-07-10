$(function () {
    $('body').show();
    window.addEventListener('message', function (event) {
        if (event.data.action == "toggleWindow") {
            if (event.data.value == "true") {
                $('body').show();
            } else {
                $('body').hide();
            }
        }
    });
});

document.querySelector("#SaltyNUI-Title").textContent = config.SaltyChatTitle;
document.querySelector("#info").textContent = config.info;
