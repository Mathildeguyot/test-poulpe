const toggleEditTaskForm = () => {
  const cards = document.querySelectorAll('.task-card');

  cards.forEach((card) => {
    // console.log(arrow);
    const taskId = card.dataset.taskId;
    // console.log(taskId);
    const pencil = card.querySelector('#pencil');
    const myForm = card.querySelector('#edit-form');
    // console.log(arrow);
    pencil.addEventListener('click', (event) => {


      const overlay = document.querySelector(".overlay");
      myForm.classList.remove("invisible");
      overlay.classList.remove("invisible");

    });

    const overlay = document.querySelector(".overlay");
    overlay.addEventListener("click", (event) => {
      myForm.classList.add("invisible");
      overlay.classList.add("invisible");
    });
  });
};


export { toggleEditTaskForm };
