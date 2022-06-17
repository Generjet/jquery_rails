search_input = document.querySelector("#search-input")
search_input.addEventListener("input", (event) => {
    console.log(event.srcElement.value)
})