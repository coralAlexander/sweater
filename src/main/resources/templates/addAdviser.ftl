<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/contractorList.css">
<link rel="stylesheet" href="/static/addAdviser.css">

<@c.page>
    <div class="header">
        <h1>CSS Макет сайта Блог</h1>
        <p>Измените размер окна браузера, чтобы увидеть эффект.</p>
    </div>

    <h5> Add Adviser price</h5>
    <div>
        <form action="/addAdviser" method="post" enctype="multipart/form-data">
            <div class="left-col">
                <div class="form-group row special">
                    <label class="col-sm-2 col-form-label lb1 ">Имя советника:</label>
                    <div>
                        <select class="custom-select" id="inputGroupSelect04" name="spec"
                                aria-label="Example select with button addon">
                            <option selected>Choose...</option>
                            <option value="Сантехник">Сантехник</option>
                            <option value="Электрик">Электрик</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Стоимость: </label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="specPrice" placeholder="Стоимость" required/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Заплачено: </label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="specPaid" placeholder="Заплачено" required/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Коментарии: </label>
                    <div class="col-sm-6">
                        <textarea class="form-control" aria-label="With textarea" name="comments"
                                  placeholder="Коментарии"></textarea>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-6">
                        <input type="file" name="file" id="customFile">
                    </div>

                    <#--<label class="custom-file-label" for="customFile">Choose file</label>-->
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <div class="mr-3 leftcolumn">
                    <button class="btn btn-primary add btn-lg btn-block" type="submit">Добавить</button>
                </div>


            </div>
            <div class="right-col">
                <div class="img-add">
                    <img src="../img/index.jpg" alt="Картинкка">
                </div>
                <div>
                    <form>
                        <input class="btn btn-primary back-btn" type="button" value="Go back" style="width: 25%;margin-top: 10px "
                               onclick="history.back()">
                    </form>
                </div>
            </div>
            <#--            <input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
        </form>
    </div>
</@c.page>

<#--
<style>

    .img-add{
        margin-left: 5px;
        border: 7px solid yellow;
        border-radius: 15px ;
    }

    .header {
        text-align: center;

    }
    .left-col{
        float: left;
        width: 70%;
    }

    .right-col{

        float: left;

    }

    .custom-select {
        font-weight: bolder;
        background-color: #f1f1f1;
        width: 150%;
    }

    .btn-primary.add {
        width: 25%;
    }

    .lb1 {
        font-weight: bolder;
        margin-right: 16px;
    }

    .fileAdd{
        margin-left: 1px;
    }


</style>-->
