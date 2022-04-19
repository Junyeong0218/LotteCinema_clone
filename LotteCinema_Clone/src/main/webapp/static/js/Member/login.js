const select_box = document.querySelectorAll(".select-box");
const member_btn = document.querySelectorAll(".member-btn");

for (let i = 0; i < member_btn.length; i++) {
    member_btn[i].onclick = addClassCurrent;
}

function addClassCurrent(event) {
    for (let i = 0; i < member_btn.length; i++) {
        if (member_btn[i] == event.target) {
            member_btn[i].classList.add("current");
            select_box[i].classList.add("current");
        } else {
            member_btn[i].classList.remove("current");
            select_box[i].classList.remove("current");
        }
    }
}
// $(document).ready(function (){

//     $("div.select-button button").click(function (){
//         let tab_id = $(this).attr("data-tab");

//         $("div.select-button button").remmoveclass("current");
//         $(".select-box").remmoveclass("current");

//         $(this).addClass("current");
//         $("#" + tab_id).addClass("current");
//     })
// })

