$(function() {

  //todoのcontentをliタグでhtmlに追加
  function buildHTML(todo) {
    var html = $('<li class="todo">').append(todo.content);
    return html;
  }

  // CreateTodoボタンが押されたら発火
  $('.js-form').on('submit', function(e) {
    e.preventDefault();  // submitによるフォームの送信を中止
    // テキストフィールドの中身を取得
    var textField = $('.js-form__text-field');
    var todo = textField.val();
    // Ajax発動!!
    $.ajax({
      type: 'POST',
      url: '/todos.json',  //createアクションへ
      data: {
        todo: {
          content: todo  //取得したテキストフィールドの中身をcontentとして送る
        }
      },
      dataType: 'json'  //もちろんjson形式で!!
    })
    .done(function(data) {
      var html = buildHTML(data);  //返ってきたデータをbuildHTMLに渡す↑↑
      $('.todos').append(html);  //作成したhtmlをビューに追加
      textField.val('');  //テキストフィールドを空に
    })
    .fail(function() {
      alert('error')
    });

  });
  //doneボタンをクリックで発火
$('.todos').on('click', '.done-button', function(e) {  e.preventDefault();  //aタグのリンクを中止
  $(this).remove();  //doneボタンを削除
  var id = $(this).data('id');  //セットしたtodo.idを取り出す
  $(`#${id}`).addClass('blue');  //関連するtodoリストを青色に変更
})
});
