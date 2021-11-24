<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/addAdviser.css">
<link rel="stylesheet" href="/static/contractorList.css">


<@c.page>
    <h5> Add Adviser price</h5>
    <div>
        <form action="/addAdviser" method="post" enctype="multipart/form-data" class="add-adviser-form" >
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
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="specPrice" placeholder="Стоимость" required/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Заплачено: </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="specPaid" placeholder="Заплачено" required/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Коментарии: </label>
                    <div class="col-sm-10">
                        <textarea class="form-control" aria-label="With textarea" placeholder="Коментарии"></textarea>
                    </div>
                </div>

                <div class="form-group row fileAdd">
                    <div class="custom-file">
                        <input type="file" name="file" id="customFile">
                    </div>
                </div>

                <input type="button" value="Go back" style="width: 25%;margin-top: 10px "
                       onclick="history.back()">

                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            </div>

            <div class="right-col">
                <div class="mr-3 leftcolumn">
                    <button class="btn btn-primary add btn-lg btn-block" type="submit">Добавить</button>
                </div>
            </div>
        </form>
    </div>
</@c.page>

<style>
    .custom-select {
        font-weight: bolder;
        background-color: #f1f1f1;
        width: 150%;
    }

    .lb1 {
        font-weight: bolder;
        margin-right: 16px;
    }

    .fileAdd{
        margin-left: 1px;
    }

    .add-adviser-form {
        display: flex;
        flex-wrap: wrap;
    }

    .left-col {
        width: 75%;
    }
    .right-col {
        width: 25%;
    }

</style>