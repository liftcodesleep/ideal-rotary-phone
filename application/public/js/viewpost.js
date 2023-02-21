function addNewComment(data) {
  let commentList = document.querySelector("comment-list");
  let newComment = document.createElement('template');
  newComment.innerHTML = `<div id="message-${data.commentId}" 
    class="comment">
    <strong class="comment-author">${data.username}</strong>
    <span class="comment-date">${new Date().toLocaleString("en-US")}</span>
    <div class="comment-text">${data.comment}</div>
  </div>`;
  commentList.append(newComment.content);
  document.getElementById(`message-${data.commentId}`).scrollIntoView();
}
document.getElementById('comment-button')
  .addEventListener('click', function (ev) {
    let commentTextElement = document.getElementById('comment-text');
    let commentText = commentTextElement.value;
    let postId = ev.currentTarget.dataset.postid;

    if (!commentText) return;
    document.getElementById("comment-text").value = "";

    fetch("/comments/create", {
      method: "POST",
      headers: { "Content-Type": "Application/json" },
      body: JSON.stringify({
        comment: commentText,
        postid: postId
      })
    })
      .then(response => response.json())
      .then(res_json => console.log(res_json))
    addNewComment(res_json.data);
  })