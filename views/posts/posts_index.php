<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<?php
    foreach($posts as $post) {
        echo '<div class="span8">';
        echo '<h1>'.$post['post_subject'].'</h1>';
        echo '<p>'.$post['post_text'].'</p>';
        echo '<span class="badge badge-success">Posted '.$post['post_created'].'</span>';
        echo '</div> <hr>';
    }
?>
