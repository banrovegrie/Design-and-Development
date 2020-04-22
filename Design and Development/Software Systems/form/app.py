from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)
app.config[
    "SQLALCHEMY_DATABASE_URI"] = "mysql://root:ala@localhost/practise"

db = SQLAlchemy(app)

class Review(db.Model):
    id = db.Column(db.Integer, nullable=False, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    age = db.Column(db.Integer, nullable=False)
    comment = db.Column(db.String(1000), nullable=False)


@app.route("/")
def landing_page():
    return "Go to /addReview to add a Review and go to /allReviews to view " \
           "all reviews "


@app.route("/addReview", methods=["GET", "POST"])
def add_review():
    if request.method == "POST":
        form = request.form

        new_review = Review(
            name=form["name"],
            age=form["age"],
            comment=form["comment"]
        )

        db.session.add(new_review)
        db.session.commit()
    return render_template("add.html")


@app.route("/allReviews", methods=["GET"])
def getReview():
    reviews = Review.query.all()
    return render_template("show.html", data=reviews)


if __name__ == "__main__":
    db.create_all()
    app.run(debug=True)
