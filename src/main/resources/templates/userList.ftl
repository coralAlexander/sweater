<#import "parts/common.ftl" as c>

<@c.page>
    <h3 style="color:Tomato;">List of users</h3>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td><strong>${user.username}</strong></td>
                <td><#list user.roles as role>${role}<#sep>,</#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>


<style>
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }

    th, td {
        padding: 15px;
        text-align: left;
    }

    table#t01 {
        width: 100%;
        background-color: #f1f1c1;
    }
</style>