<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <title>Main Chat</title>
</head>
<body>
    <div class="main-chat-container">
        <div class="tabs">
            <button class="active">Inbox</button>
            <button>Outbox</button>
            <button>Sent Items</button>
            <button>Drafts</button>
        </div>
        
        <div class="status-update">
            <label for="status">Update Status:</label>
            <input type="text" id="status" name="status" placeholder="What's on your mind?">
        </div>

        <div class="stories">
            <!-- Display stories here -->
            <div class="story">This is a sample story.</div>
            <div class="story">Another sample story.</div>
            <!-- Add more stories dynamically -->
        </div>

        <button class="settings-btn">Settings</button>
    </div>
</body>
</html>
