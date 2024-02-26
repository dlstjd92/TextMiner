const label = document.querySelector('.label');
const options = document.querySelectorAll('.optionItem');
const handleSelect = function(item) {
  label.innerHTML = item.textContent;
  label.parentNode.classList.remove('active');
}
options.forEach(function(option){
  option.addEventListener('click', function(){handleSelect(option)})
})

label.addEventListener('click', function(){
  if(label.parentNode.classList.contains('active')) {
    label.parentNode.classList.remove('active');
  } else {
    label.parentNode.classList.add('active');
  }
});

// 화면 이외의 영역 클릭 시 optionList가 사라지도록 함
document.addEventListener('click', function(event) {
  const isClickInside = label.parentNode.contains(event.target);
  if (!isClickInside) {
    label.parentNode.classList.remove('active');
  }
});


