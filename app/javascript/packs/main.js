// const img = document.querySelector(".container")
// const cb = function(entries,observer){
//   // img.classList.toggle("active")
//   entries.forEach(entry=>{
//     if(entry.isIntersecting){
//       entry.target.classList.add("active")
//       console.log("active")
//     } else {
//       entry.target.classList.remove("active")
//       console.log("non-active")
//     }
//   });
// }
// const options = {
//  root: null,
//  rootMargin: "-200px 0px -200px 0px",
//  threshold: 0
// }
// const io = new IntersectionObserver(cb, options)
// io.observe(img)

class LinkMenu {
  constructor() {
      this.DOM = {};
      this.DOM.btnRb = document.querySelector('.bottom-nav_right');
      this.DOM.btnRt = document.querySelector('.top-nav_right');
      this.DOM.btnLb = document.querySelector('.bottom-nav_left');
      this.DOM.btnLt = document.querySelector('.top-nav_left');
      this.DOM.container = document.querySelector('#global-container');
      this._addEvent();
  }

 

  _toggleRb() {
      this.DOM.container.classList.toggle('menu-open-rb');
  }
  _toggleRt(){
      this.DOM.container.classList.toggle('menu-open-rt');
  }
  _toggleLb(){
      this.DOM.container.classList.toggle('menu-open-lb');
  }
  _toggleLt(){
      this.DOM.container.classList.toggle('menu-open-lt');
  }

  _addEvent() {
      this.DOM.btnRb.addEventListener("mouseover", this._toggleRb.bind(this));
      this.DOM.btnRb.addEventListener("mouseout", this._toggleRb.bind(this));
      this.DOM.btnRt.addEventListener("mouseover", this._toggleRt.bind(this));
      this.DOM.btnRt.addEventListener("mouseout", this._toggleRt.bind(this));
      this.DOM.btnLb.addEventListener("mouseover", this._toggleLb.bind(this));
      this.DOM.btnLb.addEventListener("mouseout", this._toggleLb.bind(this));
      this.DOM.btnLt.addEventListener("mouseover", this._toggleLt.bind(this));
      this.DOM.btnLt.addEventListener("mouseout", this._toggleLt.bind(this));

  }
}

new LinkMenu();

class TextChange{
  constructor(){
    this.DOM = {};
    this.DOM.btnTweet = document.querySelector(".btn-label");
    this.DOM.btnImg = document.querySelector(".img-label")
    this._event();
  }
  _toggleBtn(){
      this.DOM.btnTweet.classList.toggle(".hover-btn")
      this.DOM.btnImg.classList.toggle(".hover-btn")
  }
  _changeIntTw(){
      this.DOM.btnTweet.innerHTML = ("投稿");

    }
  _changeIntRvTw(){
      this.DOM.btnTweet.innerHTML = ("Tweet");
      
  }
  _changeIntImg(){
    this.DOM.btnImg.innerHTML = ("画像を選択");
    }
  _changeIntRvImg(){
    this.DOM.btnImg.innerHTML = ("Upload data");
    }

  _event(){
      this.DOM.btnTweet.addEventListener("mouseover",this._toggleBtn.bind(this));
      this.DOM.btnTweet.addEventListener("mouseover",this._changeIntTw.bind(this));
      this.DOM.btnTweet.addEventListener("mouseout",this._toggleBtn.bind(this));
      this.DOM.btnTweet.addEventListener("mouseout",this._changeIntRvTw.bind(this));
      this.DOM.btnImg.addEventListener("mouseover",this._toggleBtn.bind(this));
      this.DOM.btnImg.addEventListener("mouseover",this._changeIntImg.bind(this));
      this.DOM.btnImg.addEventListener("mouseout",this._toggleBtn.bind(this));
      this.DOM.btnImg.addEventListener("mouseout",this._changeIntRvImg.bind(this));

  }
}
 new TextChange();