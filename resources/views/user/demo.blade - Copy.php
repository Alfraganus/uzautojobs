<!DOCTYPE html>
<html lang="en">
<style>
    .ex1{
        border: 1px solid black;
        outline-style: solid;
        outline-color: black;
        outline-width: thin;
        width: 500px;
        margin-top: 8px;

    }
    * {
        font-family: DejaVu Sans !important;
    }
    .clear {
        clear: both;
    }
</style>
<head>
    <link rel="stylesheet" href="{{$class}}"  media="all">
</head>
<body>
<h3 style="color: #0d638f;font-weight: bold">  Номзоднинг резюмеси</h3>
<div class="row">
    <div class="col-xs-3">Йўналишингиз</div>
    <div class="col-xs-8 ex1"><span style="color: black;text-align: center">Мухандис </span> </div>
    <div style="clear: both;margin-top: 25px;border-top: 1px solid black;"></div>
</div>

<div class="row" style="margin-top: 45px">

    <h2 class="text-center">Шахсий маълумотлар</h2>
    <div class="col-xs-3">ФИШ:</div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">Иброхимов  Иқболжон Икромжон  </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Туғилган сана: </div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">05.01.1993 </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Жинси:</div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">Эркак </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Оилавий ахволи: </div>
    <div class="col-xs-2 ex1"><span class="text-center" style="color: black;">Оилали   </span></div>
    <div class="col-xs-2">Фарзанди : </div>
    <div class="col-xs-3 ex1"><span class="text-center" style="color: black;">1 nafar   </span></div>
    <div class="clear"></div>


    <div class="col-xs-3">Давлат: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">Ўзбекистон    </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Турар жой манзили: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">Andijon, Ozbekiston    </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Яшаш жойи манзили:  </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">Andijon, Ozbekiston    </span></div>
    <div class="clear"></div>


    <div class="col-xs-3">Телефон Уй: </div>
    <div class="col-xs-2 ex1"><span class="text-center" style="color: black;">97 473 30 71 </span></div>
    <div class="col-xs-2">Уяли : </div>
    <div class="col-xs-3 ex1"><span class="text-center" style="color: black;">90 148 37 43 </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Электрон  манзили: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;"> uzpsychologist@gmail.com </span></div>
    <br>


    {{--<div style="clear: both;margin-top: 25px;border-top: 1px solid black;"></div>--}}
    <h2 class="text-center">Маълумоти</h2>

    <div class="col-xs-3">Маълумот даражаси: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">Олий  </span></div>
    <div class="clear"></div>

    <table class="table table-striped">
        <thead>
        <tr>
            <col width="50">
            <col width="50">
            <col width="100">
            <col width="100">
            <col width="80">
            <th>Кирган  йил</th>
            <th>Тамомлаган йил</th>
            <th>Ўқув юрти</th>
            <th>Мутаҳассислик</th>
            <th>Даража</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>2014</td>
            <td>2018</td>
            <td>Андижон Машинасозлик институти</td>
            <td>Ер усти транспорт тизими</td>
            <td>Бакалавр </td>
        </tr>

        <tr>
            <td>2014</td>
            <td>2018</td>
            <td>Андижон Машинасозлик институти</td>
            <td>Ер усти транспорт тизими</td>
            <td>Бакалавр </td>
        </tr>

        <tr>
            <td>2014</td>
            <td>2018</td>
            <td>Андижон Машинасозлик институти</td>
            <td>Ер усти транспорт тизими</td>
            <td>Бакалавр </td>
        </tr>

        </tbody>
    </table>

    {{--<div class="col-xs-2">Жинси:</div>
    <div class="col-xs-2 ex1"><span style="color: black">1.	Эркак   </span></div>--}}

    <div class="col-xs-1 pull-right">
        <img style="height: 120px;width: 100px;position: fixed;margin-top: 180px;" src="{{asset('public/user_images/'.$data->image)}}">
    </div>
</div>


</body>
</html>

