<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/contractorList.css">

<@c.page>
    <h5> Специалисты </h5>
    <table>
        <thead>
        <tr>
            <th>Специальность</th>
            <th>Имя Специалиста</th>
            <th>Предполагаемая Сумма</th>
            <th>Предложение</th>
            <th>Коннечная сумма</th>
            <th>Копия контракта</th>
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
