class ClTextChange{
  constructor(){
    this.DOM = {};
    this.DOM.btnCalendar = document.querySelector(".nik-span");
    this.DOM.btnCal = document.querySelector(".diary-nik");
    this._event();
  }

  _changeText(){
      this.DOM.btnCalendar.innerHTML = ("Write a diary");
    }
  _changeTextRe(){
      this.DOM.btnCalendar.innerHTML = ("日記を書く");
      
  }
  _event(){
      this.DOM.btnCal.addEventListener("mouseover",this._changeTextRe.bind(this));
      this.DOM.btnCal.addEventListener("mouseout",this._changeText.bind(this));
  }
}
 new ClTextChange();