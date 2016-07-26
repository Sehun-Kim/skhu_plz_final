module PostsHelper
    def likeBtn(hasLike)
    if hasLike || hasLike.present?
      content_tag :h3 do
<<<<<<< HEAD
        link_to like_lecture_post_path(@lecture,@post),  method: :post do
=======
        link_to like_lecture_post_path(@lecture,@lecture.id),  method: :post do
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
          content_tag :i, nil, class: "fa fa-thumbs-o-up", "aria-hidden" => "true"
        end
      end
    else
      content_tag :h3 do
<<<<<<< HEAD
        link_to dislike_lecture_post_path(@lecture,@post), method: :post do
=======
        link_to dislike_lecture_post_path(@lecture,@lecture.id), method: :post do
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
          content_tag :i, nil, class: "fa fa-thumbs-o-down", "aria-hidden" => "true"
        end
      end
    end
  end
end
