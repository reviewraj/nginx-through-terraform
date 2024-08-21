 #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo systemctl start nginx
    sudo systemctl enable nginx
    echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rakhi Contribution Tracker</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Rakhi Contribution Tracker</h1>
    </header>
    <main>
        
        <section>
            <h2>Total Money Collected from Brothers</h2>
            <div id="total-amount">₹0</div>
            <form id="contribution-form">
                <input type="number" id="amount" placeholder="Enter amount in rupees" required>
                <button type="submit">Add Contribution</button>
            </form>
        </section>
    </main>

    
</body>
</html>
' > /usr/share/nginx/html/index.html
