return {
  -- %l = current line number
  -- %c = column number
  -- %P = percentage through file
  {
    provider = " ",
  },
  {
    flexible = 200,
    { provider = "Ln %(%l%), Col %c, %P" },
    { provider = "Ln %(%l%), Col %c" },
    { provider = "L%(%l%):C%c" },
  },
}
