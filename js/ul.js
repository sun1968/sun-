 window.onload = function main() {
            Tabs(".list-item", ".contents", "list-item-checked", "contents-checked");
            Tab(".list-item1", ".contents1", "list-item-checked1", "contents-checked1");
            a();
       }
 function Tabs(tabs_name, contents_name, tabs_checked_style, contents_checked_style) {
    var tabs = document.querySelectorAll(tabs_name),
        contents = document.querySelectorAll(contents_name),
       e_mark = 0;
for (var i = 0, len = tabs.length; i < len; i++) {
        tabs[i].num = i;
        tabs[i].onclick = function () {
            tabs[e_mark].classList.toggle(tabs_checked_style);
             tabs[this.num].classList.toggle(tabs_checked_style);
             contents[e_mark].classList.toggle(contents_checked_style);
             contents[this.num].classList.toggle(contents_checked_style);
             e_mark = this.num;
         };
     }
 }
  function Tab(tab_name, content_name, tab_checked_style, content_checked_style) {
    var tab = document.querySelectorAll(tab_name),
        content = document.querySelectorAll(content_name),
       e_mark1 = 0;
for (var i = 0, len = tab.length; i < len; i++) {
        tab[i].num = i;
        tab[i].onclick = function () {
            tab[e_mark1].classList.toggle(tab_checked_style);
             tab[this.num].classList.toggle(tab_checked_style);
             content[e_mark1].classList.toggle(content_checked_style);
             content[this.num].classList.toggle(content_checked_style);
             e_mark1 = this.num;
         };
     }
 }function a(){
 	   var lis = document.getElementById("ul1").getElementsByTagName("li");
    var divs = document.getElementById("content").getElementsByTagName("div");
    for(var i=0; i<lis.length; i++){
        lis[i].index = i;
      lis[i].onclick = function(){
              for(var j=0; j<lis.length; j++){
                lis[j].className = "";
              }
              this.className ="hover";
              for(var i=0; i<divs.length; i++){
                divs[i].style.display="none";
              }
             divs[this.index].style.display = "block";
      }
    }
 }
