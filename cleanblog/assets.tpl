<script src="//cdn.jsdelivr.net/emojione/2.2.2/lib/js/emojione.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/emojione/2.2.2/assets/css/emojione.min.css"/>
<script type="text/javascript">
$(function() {
    var input = $('body > article > div').html();
    $('body > article > div').html(emojione.unicodeToImage(input));
});
</script>
