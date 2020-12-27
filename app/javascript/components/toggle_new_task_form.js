const toggleNewTaskForm = () => {
  const plus = document.getElementById('plus');
  plus.addEventListener("click", (event) => {
    console.log(event);
    const myForm = document.querySelector(".task-form");
    const overlay = document.querySelector(".overlay");
    myForm.classList.remove("invisible");
    overlay.classList.remove("invisible");
  });


  const overlay = document.querySelector(".overlay");
  overlay.addEventListener("click", (event) => {
    const myForm = document.querySelector(".task-form");
    myForm.classList.add("invisible");
    overlay.classList.add("invisible");
  })
}


export { toggleNewTaskForm };
