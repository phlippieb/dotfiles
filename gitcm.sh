# In-line commit with message.
read -p $'\e[37;2mcommit message: \e[0m' msg && git commit -m "$msg"
