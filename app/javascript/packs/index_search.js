const axios = require("axios")
import { debounce } from "./debounce.js"

var search_input = document.querySelector("#search-input")
var blog_posts_table = document.querySelector("#blog-posts-collection")

search_input.addEventListener("input", debounce(getSearchResults, 500))
// search_input.addEventListener("input", debounce(getSearchResults, 500 ))

function getSearchResults(event) {
    // console.log(event.srcElement.value)
    // var query_param = event.srcElement.value
    var query = event.srcElement.value
    var token = document.getElementsByName('csrf-token')[0].content

    axios.get("/blog_posts", {
        params: { query: query},
        headers: {
            'Accept': 'application/javascript',
            'X-CSRF-token': token,
            'X-Requested-with': 'XMLHTTPRequest'
        }
    }).then((response)=>{
        console.log(response.data)
        // blog_posts_table.innerHTML = response.data
    })
}