require('code_runner').setup({
  mode= 'term',
  focus = true,
  startinsert = true,
   term = {
		position = "bot",
		size = 8,
	},
  filetype = {
		java = "cd $dir &&  /home/jagannath/Applications/jdk-19.0.1/bin/javac $fileName && /home/jagannath/Applications/jdk-19.0.1/bin/java $fileNameWithoutExt",
		python = "/home/jagannath/.pyenv/shims/python -u",
		typescript = "deno run",
		rust = "cd $dir && rustc -o $fileNameWithoutExt $fileName && $dir/$fileNameWithoutExt",
        c = "cd $dir && gcc -o $fileNameWithoutExt $fileName -O3 -lm && $dir/$fileNameWithoutExt && rm $dir/$fileNameWithoutExt",
        lua = "lua",
        kivy = "/home/jagannath/.pyenv/shims/python main.py",

	},
})
