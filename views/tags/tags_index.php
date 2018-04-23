<ul class="list-group">

    <? foreach($tags as $tag): ?>
    <a href="<?=BASE_URL?>tags/view/<?=$tag['tag_id']?>"><li class="list-group-item"><?=$tag['tag_name']?></li></a>
    <? endforeach ?>

</ul>