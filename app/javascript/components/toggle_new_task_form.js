const toggleNewTaskForm = () => {
  const plus = document.getElementById('plus');
  plus.addEventListener("click", (event) => {
    console.log(event);
    const myForm = document.querySelector(".task-form");
    const overlay = document.querySelector(".overlay");
    myForm.classList.remove("invisible");
    overlay.classList.remove("invisible");
  });

  const submit = document.querySelector('#new-task-button');
  submit.addEventListener("click", (event) => {
    console.log(event);
    const myForm = document.querySelector(".task-form");
    const overlay = document.querySelector(".overlay");
    myForm.classList.add("invisible");
    overlay.classList.add("invisible");
  });
}


export { toggleNewTaskForm };
