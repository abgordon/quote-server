# Quote Server

### current image
`docker run abgordon/quote-server:0.3`

Quote server fills a need for interesting things to pop up when I open new terminal windows. I run this as a docker daemon so that it's always able to pull quotes when I open a new tab, edifying me in the process. I can also keep the quote party going with `curl localhost:8080` whenever I see fit.

And now, you can too! Simply add the contents of `bash.sh` to your bash profile of choice; i'm on mac, so I just added it to `~/.bash_profile`. And that's all there is to it! Just kidding, that's a lie. You'll need to install docker, as well.

I regretfully don't recall the website I pulled the quotes from, so I can't give them credit. But I googled "long list of computer science quotes" or some such and copy-pasted the list into `quotes.txt`. Then I read that line by line, applying the stupid heuristic of "split the file up by empty lines". This isn't 100% correct and sometimes the quotes look weird. And the quotes aren't always strictly relevant to computing, per se (Confucius snuck in there somehow). But hey, it took me 5 minutes to write.

This is a chance to apply one of my favorite quotes: "The first 90% of the code accounts for the first 90% of the development time. The remaining 10% of the code accounts for the other 90% of the development time. - T. Cargill"

See? We're already becoming wiser.

At any rate, this allows us to split the quotes into an array, and the server picks a random index to pick a quote. Easy peasy.

Feel free to submit a PR if something seems off, or just shoot me an email and i'll fix it.

### Update 12/2/2019

I added the quotes from the following articles from [delight-im's Knowledge articles](https://github.com/delight-im/Knowledge):

```
Audio.md
Browsers.md
Business.md
Creativity.md
Economics.md
Education.md
Electronics.md
Email.md
Health.md
History.md
Home.md
Law.md
Life.md
Media.md
Mobile\ technology.md
Politics.md
Privacy.md
Psychology.md
Safety.md
Science.md
Travel.md
Unix.md
Writing.md
```

The script is in `create-quotes.sh` and I replaced `\n` with `\n\n` to fit the quotes split method.
