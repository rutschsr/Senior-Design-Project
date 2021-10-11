# Import smtplib for the actual sending function
import smtplib

# Import the email modules we'll need
from email.message import EmailMessage

# Open the plain text file whose name is in textfile for reading.
with open(textfile) as fp:
    # Create a text/plain message
    msg = EmailMessage()
    msg.set_content(fp.read())

# me == the sender's email address
# you == the recipient's email address
msg['Subject'] = 'test'
msg['From'] = me  # Needs to be changed
msg['To'] = you # Needs to be changed

# Send the message via our own SMTP server.
s = smtplib.SMTP('10.10.10.3') # Check this
i = 0
while i < 100:
    s.send_message(msg)
    i = i + 1
s.quit()
