{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "/*remove null statements*/\r\n",
                "\r\n",
                "SELECT *\r\n",
                "FROM movies$\r\n",
                "WHERE rating IS NOT NULL\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND released IS NOT NULL\r\n",
                "AND score IS NOT NULL\r\n",
                "AND votes IS NOT NULL\r\n",
                "AND director IS NOT NULL\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "946aa494-1794-42da-8104-e7ff687ec1c4",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*Highest score in 2020*/\r\n",
                "\r\n",
                "SELECT MAX(score)\r\n",
                "FROM movies$\r\n",
                "WHERE [year]= '2020'\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "6afd292b-8b40-498b-a536-49399670e613",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*Select all table contents*/\r\n",
                "\r\n",
                "SELECT *\r\n",
                "FROM movies$"
            ],
            "metadata": {
                "azdata_cell_guid": "c45d4bcf-4f61-40e1-8c5f-ffbde1fb8c19",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*Action movies between 2018-2020*/\r\n",
                "SELECT *\r\n",
                "FROM movies$\r\n",
                "WHERE [year] >='2018'"
            ],
            "metadata": {
                "azdata_cell_guid": "746927ca-95c3-4f84-80ec-fe5e441d0b04",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*select specific columns eg name, rating, score*/\r\n",
                "\r\n",
                "SELECT name, rating, score\r\n",
                "FROM movies$"
            ],
            "metadata": {
                "azdata_cell_guid": "6a903f0b-2064-4d92-987b-d8ec463b3ee0",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*Add a popularity column using case statement*/\r\n",
                "\r\n",
                "\r\n",
                "SELECT genre,rating, score,\r\n",
                "CASE \r\n",
                " WHEN score > 7.0 THEN 'Top'\r\n",
                " WHEN score BETWEEN 6.0 AND 7.0 THEN 'Mid'\r\n",
                " WHEN score < 6.0 THEN 'Low'\r\n",
                "END AS Popularity\r\n",
                "FROM movies$\r\n",
                "ORDER BY rating DESC, genre DESC"
            ],
            "metadata": {
                "azdata_cell_guid": "c0e0efb8-9090-4168-a712-ab10571401ea",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "0d929001-5c90-43ec-8961-88b47e8ebf48",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*Removal of null values*/\r\n",
                "\r\n",
                "SELECT genre,rating, score,\r\n",
                "CASE \r\n",
                " WHEN score > 7.0 THEN 'Top'\r\n",
                " WHEN score BETWEEN 6.0 AND 7.0 THEN 'Mid'\r\n",
                " WHEN score < 6.0 THEN 'Low'\r\n",
                "END AS Popularity\r\n",
                "FROM movies$\r\n",
                "WHERE rating IS NOT NULL\n",
                "AND score IS NOT NULL\r\n",
                "ORDER BY rating DESC , score DESC \r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "7f6d4d62-d39e-4db0-8252-307d5f61a752",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  name, genre, year, runtime, score, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1980' AND '1990'\r\n",
                "AND genre = 'Adventure'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "ORDER BY gross DESC\r\n",
                " \r\n",
                " /*total 107*/"
            ],
            "metadata": {
                "azdata_cell_guid": "242a7c1f-d415-4e4a-b03e-884f4e742496",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  name, genre, year, runtime, score, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1980' AND '1990'\r\n",
                "AND genre = 'Comedy'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "ORDER BY gross DESC\r\n",
                "\r\n",
                "/*588*/"
            ],
            "metadata": {
                "azdata_cell_guid": "86357dee-5da1-4528-be17-0745972b7278",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  name, genre, year, runtime, score, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1980' AND '1990'\r\n",
                "AND genre = 'Drama'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "ORDER BY gross DESC\r\n",
                "\r\n",
                "/*323*/"
            ],
            "metadata": {
                "azdata_cell_guid": "e9a05af9-f9b2-402b-8a3d-33e1c58d6839",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  name, genre, year, runtime, score, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1980' AND '1990'\r\n",
                "AND genre = 'Crime'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "ORDER BY gross DESC\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "8efe0e58-dee2-4fb9-840d-a9af2af492ec",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  name, genre, year, runtime, score, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1980' AND '1990'\r\n",
                "AND genre = 'Horror'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "ORDER BY gross DESC"
            ],
            "metadata": {
                "azdata_cell_guid": "5b04d7e1-b2e2-4453-b6ec-7a41ef198089",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  name, genre, year, runtime, score, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1980' AND '1990'\r\n",
                "AND genre = 'Biography'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "ORDER BY gross DESC\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "ed9e35d8-f2c4-4371-bb93-fe657e384374",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT   genre, runtime, score, gross, budget, (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE genre IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "AND budget IS NOT NULL\r\n",
                "ORDER BY gross ASC , runtime ASC, score ASC ,Revenue ASC"
            ],
            "metadata": {
                "azdata_cell_guid": "395520ed-7262-4d4e-94e3-c12492be6f00",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT   genre, runtime, score, gross, budget, (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE genre IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND runtime IS NOT NULL\r\n",
                "AND budget IS NOT NULL\r\n",
                "ORDER BY gross DESC , runtime DESC, score DESC ,Revenue DESC"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "ccbb55f1-7290-41c6-9861-13ba45912dbf"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*highest budget*/\n",
                "\n",
                "SELECT  MAX(budget)\n",
                "FROM movies$"
            ],
            "metadata": {
                "azdata_cell_guid": "620e1d22-78a7-40f5-ae8b-3c2e46c11818",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*Most expensive movies in desc order*/\r\n",
                "\r\n",
                "\r\n",
                "SELECT name, genre, budget\r\n",
                "\r\n",
                "FROM movies$\r\n",
                "WHERE genre IS NOT NULL\r\n",
                "AND budget IS NOT NULL \r\n",
                "ORDER BY budget DESC"
            ],
            "metadata": {
                "azdata_cell_guid": "03c34dae-f671-4732-830c-1ae7012b431a",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*revenue*/\r\n",
                "\r\n",
                "SELECT name, budget, gross , (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE budget IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "ORDER BY Revenue DESC"
            ],
            "metadata": {
                "azdata_cell_guid": "22c758a2-a577-4a94-b79b-66f9e8c7333c",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*movies that made profits*/\r\n",
                "\r\n",
                "\r\n",
                "SELECT name, budget, gross , (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE budget IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND (gross-budget) >0\r\n",
                "ORDER BY Revenue DESC"
            ],
            "metadata": {
                "azdata_cell_guid": "3a20ec20-5740-4d9a-bd75-68387c296ba6",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT top 10 name, budget, score, rating, genre, gross , (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE budget IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND (gross-budget) >0\r\n",
                "ORDER BY Revenue DESC\r\n",
                "\r\n",
                "/*Top 10 movies by total revenue*/"
            ],
            "metadata": {
                "azdata_cell_guid": "6e5f92d8-fcba-4138-af33-3f0279af7d04",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT genre, gross, budget, (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE budget IS NOT NULL\r\n",
                "AND genre = 'Comedy'\r\n",
                "AND gross IS NOT NULL\r\n",
                "\r\n",
                "/*all genre by total revenue*/\r\n",
                "\r\n",
                "\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "a18fa0c8-2653-4a5d-9b36-34a1ae79c298",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT SUM(gross)\r\n",
                "FROM movies$\r\n",
                "WHERE  genre = 'Comedy'\r\n",
                "AND gross IS NOT NULL\r\n",
                "\r\n",
                "/*all genre by total gross*/\r\n",
                "\r\n",
                "\r\n",
                "\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "989da5ed-96ac-4bc8-8e8d-5fc7e002ab37",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT top 10 name , score, year,rating,votes, released, (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "ORDER BY score DESC\r\n",
                "\r\n",
                "/*Top 10 score by revenue*/\r\n",
                "\r\n",
                "\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "e6ae410b-50db-41b2-aa0b-3589b1dbf81f",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*losses*/\r\n",
                "\r\n",
                "SELECT  name, budget, gross , (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE budget IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND (gross-budget)  < 0\r\n",
                "ORDER BY Revenue ASC\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "316c9462-070a-4ef5-8101-541d3210c82c",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "/*top 20 revenue earners*/\r\n",
                "\r\n",
                "SELECT TOP 20 name, budget, gross , (gross-budget) AS Revenue\r\n",
                "\r\n",
                "FROM movies$\r\n",
                "\r\n",
                "WHERE budget IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "ORDER BY Revenue DESC"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "fd9a2ac6-5cc2-4eb7-a28a-7291a7203c6d"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT TOP 20 name, budget, gross , (gross-budget) AS Revenue\n",
                "FROM movies$\n",
                "WHERE budget IS NOT NULL\n",
                "AND gross IS NOT NULL\n",
                "AND (gross-budget)  < 0\n",
                "ORDER BY Revenue ASC"
            ],
            "metadata": {
                "azdata_cell_guid": "0735771a-0a54-4dc2-a7b0-0b1b919eae28",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "\r\n",
                "\r\n",
                "SELECT Top 20 name, genre, year, rating, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1980' AND '1990'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "ORDER BY gross DESC"
            ],
            "metadata": {
                "azdata_cell_guid": "bcdc0925-ca69-4196-a9c0-ef5230d7c11d",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT TOP 10 name, budget\r\n",
                "FROM movies$\r\n",
                "WHERE budget IS NOT NULL\r\n",
                "AND [year]  BETWEEN '1980' AND '1990'\r\n",
                "ORDER BY budget DESC\r\n",
                "\r\n",
                "/*Top 10 highest ranked budget*/"
            ],
            "metadata": {
                "azdata_cell_guid": "19b557a4-9dd7-44bd-94e2-9f2e0682ac25",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT TOP 10 name, country, gross\r\n",
                "FROM movies$\r\n",
                "WHERE gross IS NOT NULL\r\n",
                "ORDER BY gross DESC\r\n",
                "\r\n",
                "/*Top 10 countries gross*/"
            ],
            "metadata": {
                "azdata_cell_guid": "1db4b905-e453-43d2-aebd-9e8eb9403c3a",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  name, gross\r\n",
                "FROM movies$\r\n",
                "WHERE gross IS NOT NULL\r\n",
                "ORDER BY gross DESC\r\n",
                "\r\n",
                "/*Highest grossing movies*/"
            ],
            "metadata": {
                "azdata_cell_guid": "eba44379-cc83-41f6-a0ad-28bca66390e6",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT TOP 5 name, gross\r\n",
                "FROM movies$\r\n",
                "WHERE gross IS NOT NULL\r\n",
                "ORDER BY gross ASC\r\n",
                "\r\n",
                "/*Bottom 5 less grossing*/"
            ],
            "metadata": {
                "azdata_cell_guid": "38e8254b-ae92-4dce-a1a2-3f93acbfe911",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT Top 20 name, genre, year, rating, gross\r\n",
                "FROM movies$\r\n",
                "WHERE [year]  BETWEEN '1991' AND '2000'\r\n",
                "AND genre IS NOT NULL\r\n",
                "AND year IS NOT NULL\r\n",
                "AND rating IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "ORDER BY gross DESC"
            ],
            "metadata": {
                "azdata_cell_guid": "011b3eef-c173-410d-9728-006ac0f89520",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT  SUM(gross-budget) AS total_Revenue_in_comedy\r\n",
                "FROM movies$\r\n",
                "WHERE genre = 'Comedy'\r\n",
                "\r\n",
                "/*total revenue*/"
            ],
            "metadata": {
                "azdata_cell_guid": "8243810d-4e50-4e45-b713-76bb89b67185",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT TOP 10 name, score,votes,gross, budget, (gross-budget) AS Revenue\r\n",
                "FROM movies$\r\n",
                "WHERE score IS NOT NULL\r\n",
                "AND votes IS NOT NULL\r\n",
                "AND gross IS NOT NULL\r\n",
                "AND budget IS NOT NULL\r\n",
                "ORDER BY score DESC\r\n",
                "\r\n",
                "/* Top 10 score by revenue*/"
            ],
            "metadata": {
                "azdata_cell_guid": "7f0c7aa3-9643-44e9-8dad-07ffa7a20f3f",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT country, COUNT(*) As No_of_occurance\r\n",
                "FROM movies$\r\n",
                "WHERE genre = 'Comedy'\r\n",
                "GROUP BY country\r\n",
                "ORDER BY No_of_occurance DESC\r\n",
                "\r\n",
                "/*Top 10 countries genre*/"
            ],
            "metadata": {
                "azdata_cell_guid": "638e5276-82df-4441-8ba8-8f13882f401b",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}
