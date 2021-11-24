<#import "parts/common.ftl" as c>

<link rel="stylesheet" href="/static/contractorList.css">

<@c.page>
    <div>
        <h5> Специалисты (йоацим) </h5>
        <table>
            <thead>
            <tr>
                <th>Специализация</th>
                <th>Стоимость</th>
                <th>Заплачено</th>
                <th>Остаток</th>
                <th>Коментарии</th>
            </tr>
            </thead>
            <tbody>
            <#list specialListPrice as specPrice>
                <tr>
                    <td><strong>${specPrice.specialisation}</strong></td>

                    <form action="/allbuildsteps/${specPrice.id}" method="post">
                        <td>
                            <input class="price" name="price" value="${specPrice.price}">
                        <td>
                            <input class="paid" name="paid" value="${specPrice.paid}"></td>
                        <script>
                            var input = document.getElementsByClassName("price");
                            input.addEventListener("", function (event) {
                                event.preventDefault();
                                document.getElementById("myBtn").click();
                            });
                        </script>
                        <script>
                            function goTo() {
                                location.href = "/allbuildsteps/" +
                                ${specPrice.id}
                            }
                        </script>
                        <button hidden id="myBtn" onclick="goTo()">Button</button>

                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    </form>
                    <td>${specPrice.balance}</td>
                    <td>
                        <textarea> ${specPrice.comments?if_exists}</textarea>

                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
        <div>
            <a class="addSpec" href="/adviser/add">Добавить специалиста</a>
        </div>
    </div>

</@c.page>

<style>
    textarea{
        border-radius: 10px;
    }

    input{
     height: 50px;
     background-color: #c0c0c0;
     border-radius: 10px;
    }
</style>
