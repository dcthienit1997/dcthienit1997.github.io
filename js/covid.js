jQuery.getJSON('https://spreadsheets.google.com/feeds/list/1lwnfa-GlNRykWBL5y7tWpLxDoCfs8BvzWxFjeOZ1YJk/1/public/values?alt=json');
$.getJSON('https://spreadsheets.google.com/feeds/list/1lwnfa-GlNRykWBL5y7tWpLxDoCfs8BvzWxFjeOZ1YJk/1/public/values?alt=json',
            function(data) {
                let time = new Date(data.feed.updated.$t);
                $(".covid_time_update").append(time);

                let country_top1 = "<div class=\"covid_country covid_country_top1 container-fluid mx-auto mb-3 row\">"
                + "<div class=\"cov_name_country_top1 col-sm-4\">" + data.feed.entry[0].gsx$country.$t + "</div>"
                + "<div class=\"cov_confirmed_cases_top1 col-sm-3\">" + data.feed.entry[0].gsx$confirmedcases.$t + "</div>"
                + "<div class=\"cov_reported_deaths_top1 col-sm-3\">" + data.feed.entry[0].gsx$reporteddeaths.$t + "</div>"
                + "<div class=\"cov_rank_top1 col-sm-1\">1</div>"
                + "</div>";
                $(".covid_list").append(country_top1);

                let country_top2 = "<div class=\"covid_country covid_country_top2 container-fluid mx-auto mb-3 row\">"
                + "<div class=\"cov_name_country_top2 col-sm-4\">" + data.feed.entry[1].gsx$country.$t + "</div>"
                + "<div class=\"cov_confirmed_cases_top2 col-sm-3\">" + data.feed.entry[1].gsx$confirmedcases.$t + "</div>"
                + "<div class=\"cov_reported_deaths_top2 col-sm-3\">" + data.feed.entry[1].gsx$reporteddeaths.$t + "</div>"
                + "<div class=\"cov_rank_top2 col-sm-1\">2</div>"
                + "</div>";
                $(".covid_list").append(country_top2);

                let country_top3 = "<div class=\"covid_country covid_country_top3 container-fluid mx-auto mb-3 row\">"
                + "<div class=\"cov_name_country_top3 col-sm-4\">" + data.feed.entry[2].gsx$country.$t + "</div>"
                + "<div class=\"cov_confirmed_cases_top3 col-sm-3\">" + data.feed.entry[2].gsx$confirmedcases.$t + "</div>"
                + "<div class=\"cov_reported_deaths_top3 col-sm-3\">" + data.feed.entry[2].gsx$reporteddeaths.$t + "</div>"
                + "<div class=\"cov_rank_top3 col-sm-1\">3</div>"
                + "</div>";
                $(".covid_list").append(country_top3);

                var country = "";
                for(let i = 4; i < data.feed.entry.length; i++) {
                    country += "<div class=\"covid_country container-fluid mx-auto mb-3 row\">"
                    + "<div class=\"cov_name_country col-sm-4\">" + data.feed.entry[i].gsx$country.$t + "</div>"
                    + "<div class=\"cov_confirmed_cases col-sm-3\">" + data.feed.entry[i].gsx$confirmedcases.$t + "</div>"
                    + "<div class=\"cov_reported_deaths col-sm-3\">" + data.feed.entry[i].gsx$reporteddeaths.$t + "</div>"
                    + "<div class=\"cov_rank col-sm-1\">" + (i+1) + "</div>";
                    + "</div>";

                    $(".covid_list").append(country);
                    country = "";
                }
                

            }
        );