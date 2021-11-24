<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/contractorList.css">

<@c.page>
    <h5> Add Contractor</h5>
    <div>
        <form action="/contractor" method="post">

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Contractor Name:</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="conName" placeholder="Contractor Name" required/>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Contractor Phone number: </label>
                <div class="col-sm-6">
                    <input type="number" class="form-control" name="conPhone" placeholder="Phone number" required/>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Specialisation: </label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="conSpec" placeholder="Specialisation" required/>
                </div>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <div class="mr-3">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Add contractor</button>
            </div>
        </form>
    </div>
</@c.page>
