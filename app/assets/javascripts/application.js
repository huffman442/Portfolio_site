// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function changeWork(lvl) {
    const deepContainer = document.getElementById("deep");
    const liteContainer = document.getElementById("lite");
    const normalContainer = document.getElementById("normal");
    if(lvl === "deep") {
          deepContainer.className = "active";
          liteContainer.className = "inactive";
          normalContainer.className = "inactive";
    } else if(lvl === "lite") {
        liteContainer.className = "active";
        deepContainer.className = "inactive";
        normalContainer.className = "inactive";
    } else if(lvl === "normal") {
        normalContainer.className = "active"
        liteContainer.className = "inactive"
        deepContainer.className = "inactive"
    }
}
