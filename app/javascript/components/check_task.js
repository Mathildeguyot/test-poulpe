
const checkTask = () => {
  const myForm = document.querySelector(".check-form");
  document.getElementById("cbx").addEventListener("click", (event) => {

    myForm.submit();

  });
}


export { checkTask };
