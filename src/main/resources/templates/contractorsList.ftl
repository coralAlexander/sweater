<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/contractorList.css">

<@c.page>
    <h5> Contractors :  </h5>
    <table>
        <thead>
        <tr>
            <th>Contractor Name</th>
            <th>Contractor Phone</th>
        </tr>
        </thead>
        <tbody>
        <#list listCons as cons>
            <tr>
                <td><strong>${cons.conName}</strong></td>
                <td>${cons.conPhoneNum} </td>
                <td><a href="/contractor/edit/${cons.conPhoneNum}">Edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
    <div>
        <a class="addContractor" href="/contractor/add">Add contractor</a>
    </div>
</@c.page>
