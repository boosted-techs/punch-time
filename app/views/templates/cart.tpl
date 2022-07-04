<h3>Am here</h3>
<form action="save" method="post">
    <label>Names</label>
    <br/>
    <input type="text" name="names" placeholder="Eg: Jacenta"/>
    <br/>
    <label>Email</label>
    <br/>
    <input type="email" name="email" placeholder="ashan@boostedtechs.com">
    <br/>
    <input type="password" name="password" placeholder="password"/>
    <button type="submit">SAVE</button>
</form>

<div>
    <table style="border:1px solid" border="1">
{*        {$data|print_r}*}
        <tr>
            <th>Sno</th>
            <th>Names</th>
            <th>Email</th>
            <th>Password</th>
            <th>Date signed in</th>
        </tr>
        {foreach $data as $item}
            <tr>
                <td></td>
                <td>{$item.name}</td>
                <td>{$item.email}</td>
                <Td>{$item.password}</Td>
                <td>{$item.date_signin}</td>
            </tr>
        {/foreach}
    </table>
</div>