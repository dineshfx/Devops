<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WizardFX - Coming Soon</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://source.unsplash.com/random/1600x900?wizard') no-repeat center center/cover;
            color: #fff;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100vh;
        }
        .container {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 0.2em;
        }
        h2 {
            font-size: 1.5em;
            margin-bottom: 1em;
        }
        #countdown {
            font-size: 2em;
            margin-bottom: 1em;
        }
        .subscription {
            margin-top: 1em;
        }
        .subscription input[type="email"] {
            padding: 10px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
        }
        .subscription button {
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            background-color: #f39c12;
            color: #fff;
            cursor: pointer;
        }
        .social-icons {
            margin-top: 1em;
        }
        .social-icons a {
            margin: 0 10px;
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>WizardFX</h1>
        <h2>Coming Soon...</h2>
        <div id="countdown">00 Days : 00 Hours : 00 Minutes : 00 Seconds</div>
        <div class="subscription">
            <input type="email" placeholder="Enter your email">
            <button>Notify Me</button>
        </div>
        <div class="social-icons">
            <a href="#">Facebook</a>
            <a href="#">Twitter</a>
            <a href="#">Instagram</a>
        </div>
    </div>
    <script>
        // Countdown Timer Script
        const countdown = document.getElementById('countdown');
        const targetDate = new Date('2024-12-31T23:59:59').getTime();

        const updateCountdown = setInterval(() => {
            const now = new Date().getTime();
            const distance = targetDate - now;

            const days = Math.floor(distance / (1000 * 60 * 60 * 24));
            const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((distance % (1000 * 60)) / 1000);

            countdown.innerHTML = `${days} Days : ${hours} Hours : ${minutes} Minutes : ${seconds} Seconds`;

            if (distance < 0) {
                clearInterval(updateCountdown);
                countdown.innerHTML = "Launched!";
            }
        }, 1000);
    </script>
</body>
</html>
