const config = {
  gatsby: {
    pathPrefix: "/",
    siteUrl: "https://dunner.io",
    gaTrackingId: null
  },
  header: {
    logo: "https://graphql-engine-cdn.hasura.io/img/hasura_icon_white.svg",
    title: "Dunner",
    githubUrl: "https://github.com/leopardslab/dunner",
    helpUrl: "",
    tweetText: "",
    links: [
      { text: "Docs", link: "/docs" },
      {
        text: "Releases",
        link: "https://github.com/leopardslab/dunner/releases"
      }
    ]
  },
  sidebar: {
    forcedNavOrder: [
      "/introduction",
      "/docs",
      "/docs/home",
      "/docs/introduction-to-dunner",
      "/docs/installation-guide",
      "/docs/user-guide",
      "/docs/developer-guide"
    ],
    links: [{ text: "", link: "" }]
  },
  siteMetadata: {
    title: "Dunner",
    description: "A docker based task-runner",
    ogImage: null,
    docsLocation: "https://github.com/leopardslab/dunner/wiki",
    favicon: "https://graphql-engine-cdn.hasura.io/img/hasura_icon_black.svg"
  }
};

module.exports = config;
