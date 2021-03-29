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
 
 document.addEventListener("DOMContentLoaded",function(){
    const btn = document.getElementById('image-field')
    btn.addEventListener("change", function () {
    var file = this.files[0];
    const fileName = document.getElementById("file-name");
    if (file != null) {
      fileName.textContent = ""
      fileName.insertAdjacentHTML('afterbegin', file.name); 
    }
  });
});
