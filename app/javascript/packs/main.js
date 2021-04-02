
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

