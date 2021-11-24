<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/contractorList.css">

<@c.page>
    <h5> Edit Contractor</h5>
    <div>
        <form action="/contractor/update/${contractor.conId}" method="post">

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Contractor Name:</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="conName" value=${contractor.conName} />
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Contractor Phone : </label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="conPhone" value=${contractor.conPhoneNum} />
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Specialisation: </label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="conSpec" value=${contractor.specialisation} />
                </div>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <div class="mr-3">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Edit contractor</button>
            </div>
        </form>
    </div>
</@c.page>

