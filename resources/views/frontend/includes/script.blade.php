{{-- Bootstrap script --}}
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery v1.10.2 or above -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Syntax Highlighter -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/prettify/r298/prettify.min.js" defer></script>

<!-- jConveyorTicker plugin -->
<script src="{{asset("assets_final/js/jquery.jConveyorTicker.min.js")}}"></script>

<script type="text/javascript" charset="utf-8">
    $(function () {
        /*! Default options:
         *  
         *  anim_duration:  200
         *  reverse_elm:    false
         *  force_loop:     false
         *  start_paused:   false
         * 
         */
        $('.js-conveyor-1').jConveyorTicker();

        $('.js-conveyor-2').jConveyorTicker({
            anim_duration: 100
        });

        $('.js-conveyor-3').jConveyorTicker({
            reverse_elm: true
        });

        $('.js-conveyor-4').jConveyorTicker({
            force_loop: true
        });

        window.jsConveyor5 = $('.js-conveyor-5').jConveyorTicker({
            start_paused: true
        });

    });
</script>


<script type="text/javascript" charset="utf-8">
    $(function () {

        // email protection
        $('.d-js-eaddress').each(function () {
            var mAddress = $(this).html().replace('--at--', '@').replace('--dot--', '.');
            $(this).html(mAddress).attr('href', 'mailto:' + mAddress);
        });

    });
</script>

<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-5000552-4', 'auto');
    ga('send', 'pageview');
</script>
<script>
function more() {
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (moreText.style.display === "none") {
    btnText.innerHTML = "Read less <<";
    moreText.style.display = "block";
  } else {
    btnText.innerHTML = "Read more >>";
    moreText.style.display = "none";
  }
}
</script>
<script>
    $(document).ready(function () {
        $('nav li a').filter(function () {
            return this.href === location.href;
        }).addClass('activenav');
    });
</script>
<!-- WhatsHelp.io widget -->
<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+923170001715", // WhatsApp number
            email: "info@agroasiatractors.com", // Email
            call_to_action: "Request a Quote", // Call to action
            button_color: "#E74339", // Color of button
            position: "left", // Position may be 'right' or 'left'
            order: "whatsapp,email", // Order of buttons
        };
        var proto = document.location.protocol, host = "whatshelp.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /WhatsHelp.io widget -->
<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/59c78aa8c28eca75e4621e57/1e0cmfrbu';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
    </script>
    <!--End of Tawk.to Script-->
@yield('script')