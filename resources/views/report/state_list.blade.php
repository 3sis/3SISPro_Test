<style>
    body {
        font-family: sans-serif;
    }
    table {
        font-family: calibri;
        font-size: 13px;
    }
.text-left {
    text-align: left;
}
.text-right {
    text-align: right;
}
.text-center {
    text-align: center;
}
.wd_5 {
    width: 5%;
}
.wd_10 {
    width: 10%;
}

.wd_20 {
    width: 20%;
}

.th_style {
    background-color: #39498b;
    color: #fff;
}
   
</style>
<!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
<body>
    <h4 class="text-center"> State Lists </h4>
    <hr>
    <table width="100%" border="1" cellspacing="0" cellpadding="3">
        <tr>
            <th class="th_style text-center wd_5">Id</th>
            <th class="th_style text-center wd_10">State</th>
            <th class="th_style text-center wd_10">Description1</th>
            <th class="th_style text-center wd_10">Description2</th>
            <th class="th_style text-center wd_10">Country</th>
            <th class="th_style text-center wd_10">User</th>
        </tr>
        @php $i = 1;@endphp
        @foreach ($state as $row)
        <tr>
            <td class="text-center wd_5">{{$row->id}} </td>
            <td class="wd_10">{{$row->GMSMHStateId}} </td>
            <td class="wd_10">{{$row->GMSMHDesc1}} </td>
            <td class="wd_10">{{$row->GMSMHDesc2}} </td>
            <td class="wd_10">{{$row->GMSMHCountryId}} </td>
            <td class="wd_10">{{$row->GMSMHUser}} </td>
        </tr>
        @endforeach
    </table>
</body>