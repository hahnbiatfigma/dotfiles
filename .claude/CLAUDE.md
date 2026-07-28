# General coding practices
- Instead of forking/copying code, prefer to reuse code by extracting out shared functions, classes, or modules.
- Functions should be small and focused on a single task. Break up functions that are over 20 lines long.
- Create classes for complex flows or stateful logic or when you have multiple related functions that operate on the same data. Avoid creating classes just to group a few functions together.
- Prefer pure functions that do not have side effects. If a function modifies state, make sure it is clear from the function name and documentation.

# Code comments
- When creating a new struct or class, include a comment that describes its purpose and how it should be used. This helps other developers understand the intent behind the code and how to interact with it.
- Inline comments should be used sparingly, and only when necessary to clarify complex code or logic. Overuse of comments can make code harder to read and maintain. 
- Avoid writing comments that simply restate what the code is doing. Instead, focus on explaining why the code is doing something.
- Comments should remain accurate even as the code changes. For example: avoid mentioning line numbers, current other callsites, or downstream uses or dependencies.
- Comments should describe the current state of the code. Don't write comments about how things used to work, what was just changed, what was removed, or how the previous implementation behaved — that belongs in the commit message or PR description, not the source.
