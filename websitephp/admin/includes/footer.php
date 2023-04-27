</main>

  <script src="assets/js/jquery-3.6.3.min.js"></script>
  <script src="assets/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/perfect-scrollbar.min.js"></script>
  <script src="assets/js/smooth-scrollbar.min.js"></script>

  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="assets/js/custom.js"></script>
  <script src="assets/js/alertche.js"></script>

  <script>
      <?php if(isset($_SESSION['message'])) { ?>
          alertche('<?= $_SESSION['message']; ?>');
      <?php
        unset($_SESSION['message']);
      } 
      ?>
    </script>

</body>
</html>