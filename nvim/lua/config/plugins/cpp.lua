return {
    "A7lavinraj/assistant.nvim",
    dependencies = { "stevearc/dressing.nvim" },
    opts = {
        commands = {
            python = {
                extension = "py",
                compile = nil,
                execute = { main = "/home/user/.pyenv/shims/python", args = { "$FILENAME_WITH_EXTENSION" } },
            },
            cpp = {
                extension = "cpp",
                compile = { main = "g++", args = { "$FILENAME_WITH_EXTENSION", "-o", "$FILENAME_WITHOUT_EXTENSION" } },
                execute = { main = "./$FILENAME_WITHOUT_EXTENSION", args = nil },
            },
            c= {
                extension = "c",
                compile = { main = "gcc", args = { "$FILENAME_WITH_EXTENSION", "-o", "$FILENAME_WITHOUT_EXTENSION" } },
                execute = { main = "./$FILENAME_WITHOUT_EXTENSION", args = nil },
            },

        },
        time_limit = 5000,
        border = true-- border is OFF by default
    }
}
