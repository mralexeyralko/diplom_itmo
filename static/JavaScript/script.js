
function hideDivFunc(value) {        
  let items = document.getElementsByClassName('main');
    for(i of items) {
      console.log(items)
      i.style.display = 'none';
    }
    showDivFunc(value)
  }
  

function showDivFunc(value) {
        let added_item_button = document.getElementById(value);
        let actualDisplay = getComputedStyle(added_item_button).display;
        if (actualDisplay == 'none') {
          added_item_button.style.display = 'block';
        } else {
          added_item_button.style.display = 'none';
        }
      }

