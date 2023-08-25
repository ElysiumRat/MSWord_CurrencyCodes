# CurrencyCodes

A VBA macro for Word that allows the user to look up a country, and will tell them what the ISO 4217 code (current as of Jan 1, 2023) for that country's currency is, giving them the option to insert the code where the cursor is.

The search functionality works by first checking against selected text, or, if it can't find anything, by allowing the user to input the name of a country before checking. While most countries have complex names in the ISO database, the macro works with wildcards to ensure that common names (or even just snippets thereof) can be used in the search.
