<TeXmacs|1.99.14>

<style|notes>

<\body>
  <notes-header>

  <chapter*|Contribution guide>

  The blog can be read offline within TeXmacs. Just open one of the documents
  in the source directory and click on the links: they point to the local .tm
  files. Browse back-forward with the buttons
  <image|resources/contribution-guide/tm_back.png|18pt|18pt||-0.5em> and
  <image|resources/contribution-guide/tm_forward.png|18pt|18pt||-0.5em> on
  the top toolbar.

  Typically it should just be necessary to modify or add to only the
  <code*|.tm> sources in the <code*|src/> directory\Vand modify accordingly
  <hlink-tm|index.tm|./index>. The html files are then generated by one of
  the maintainers after the pull request is merged (hopefully this will be
  automated in the near future): for this reason, please do not add the
  locally-generated web pages (see below) to the git commits. Once the
  changes are pulled in they will become immediately publicly visible on the
  website.

  To automatically regenerate all the web pages use
  \ `Tools-\<gtr\>Web-\<gtr\>Create/Update web site` within <TeXmacs> and
  choose <code*|src/> as source and <code*|docs/> as destination directories.
  In this case, all links will become links to the local versions of the
  document and you will be able to browse them locally using a web-browser
  (as said above, the maintainers are going to take care of the conversion to
  html in the web site).

  You can download and install locally the style file <code*|notes.ts> (in
  <code*|src/>). If the document style is set to Notes, the local generation
  of the website will be done with the same css as the web version.

  <strong|To contribute:>\ 

  If you do not have commit rights (that is, write permission) on the
  repository, you can make a pull request starting from a fork of the
  repository.

  It is necessary to perform a few actions using the terminal. The sequence
  is fork-clone-modify-add-commit-push- and finally make a pull request;
  people that use git are familiar with these commands. Here are some hints
  for those that are using git for the first time (a basic tutorial on how to
  work on one's own repositories using git is available
  at<nbsp><hlink|https://www.earthdatascience.org/workshops/intro-version-control-git/basic-git-commands/|https://www.earthdatascience.org/workshops/intro-version-control-git/basic-git-commands/>).

  <\itemize>
    <item>Fork the repository. This can be done through the web interface.

    <item>Clone it locally. Within a suitable directory execute the command

    <\shell-code>
      git clone https://github.com/texmacs/notes.git
    </shell-code>

    a subdirectory named <code*|notes> will appear, where you will be able to
    work on the files.

    <item>Make your modifications.

    <item>Add the modified files to git (command <code*|git add>).

    <item>Commit with <code*|git commit>

    <\itemize>
      <item>the first time you do this, git will ask you to set your identity
      with the commands

      <\shell-code>
        git config --global user.email
      </shell-code>

      and

      <\shell-code>
        git config --global user.name
      </shell-code>

      the<nbsp><code*|--global><nbsp>switch can be omitted; in this case the
      identity will be set for the current repository only
    </itemize>

    <item>Push the modifications to your forked repository using <code*|git
    push>

    <itemize|<item>git asks for username and password>

    <item>Now you can make a pull request through the web interface,
    at<nbsp><code*|https://github.com/texmacs/notes/pulls><nbsp>(green
    button<nbsp><code*|New pull request>).

    <itemize|<item>The web interface gives further helpful hints. Follow the
    link<nbsp><code*|compare across forks><nbsp>above the pulldown menus to
    have them show forks, from which you can select yours.>

    <item>The pull request on github asks the maintainers to integrate your
    changes into the public repository.
  </itemize>

  <strong|To keep your fork up to date:>

  <\itemize>
    <item>Configure the upstream remote repository with

    <\shell-code>
      git remote add upstream https://github.com/texmacs/notes.git
    </shell-code>

    (instructions at <hlink|https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/configuring-a-remote-for-a-fork|https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/configuring-a-remote-for-a-fork>).

    <item>Follow the steps at <hlink|https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/syncing-a-fork|https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/syncing-a-fork>,
    that is:

    <\itemize>
      <item>Make sure you are working on the branch you want to work on, e.g.

      <\shell-code>
        git checkout main
      </shell-code>

      where git might answer you

      <\shell-code>
        Already on 'main'

        Your branch is up to date with 'origin/main'.
      </shell-code>

      <item>Then do

      <\shell-code>
        <code*|git fetch upstream>

        <code*|git merge upstream/main>

        <code*|git push>
      </shell-code>
    </itemize>

    \;
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Contribution
      guide> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>