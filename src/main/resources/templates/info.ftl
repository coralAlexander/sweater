<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/info.css">
<link rel="stylesheet" href="/static/contractorList.css">
<@c.page>
<body>

<div class="header">
    <h1>CSS Макет сайта Блог</h1>
    <p>Измените размер окна браузера, чтобы увидеть эффект.</p>
</div>

<div class="topnav">
    <a href="#">Ссылка</a>
    <a href="#">Ссылка</a>
    <a href="#">Ссылка</a>
    <a href="#" style="float:right">Ссылка</a>
</div>

<div class="row">
    <div class="leftcolumn">
        <h5> Contractors :  </h5>
        <table>
            <thead>
            <tr>
                <th>Contractor Name</th>
                <th>Contractor Phone</th>
            </tr>
            </thead>
            <tbody>
          <#--  <#list listCons as cons>-->
                <tr>
                    <td><strong>Name</strong></td>
                    <td> dfdfdfd </td>
                    <#--<td><a href="/contractor/edit/${cons.conPhoneNum}">Edit</a></td>-->
                </tr>
            <#--</#list>-->
            </tbody>
        </table>
        <div>
            <a class="addContractor" href="/contractor/add">Add contractor</a>
        </div>
    </div>
    <div class="rightcolumn">
        <div class="card">
            <h2>Обо Мне</h2>
            <div class="fakeimg" style="height:100px;">Изображение</div>
            <p>Какой-то текст обо мне in culpa qui officia deserunt mollit anim..</p>
        </div>
        <div class="card">
            <h3>Популярный пост</h3>
            <div class="fakeimg"><p>Изображение</p></div>
            <div class="fakeimg"><p>Изображение</p></div>
            <div class="fakeimg"><p>Изображение</p></div>
        </div>
        <div class="card">
            <h3>Следить за мной</h3>
            <p>Некоторый текст..</p>
        </div>
    </div>
</div>

<div class="footer">
    <h2>Нижний Колонтитул</h2>
</div>

</body>
</html>
</@c.page>