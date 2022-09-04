defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do
    String.upcase(first_letter(name)) <> "."
  end

  def initials(full_name) do
    full_name
    |> String.split()
    |> Enum.map(&initial/1)
    |> Enum.join(" ")

    # Please implement the initials/1 function
  end

  def pair(full_name1, full_name2) do
    names_pairs = "#{initials(full_name1)}  +  #{initials(full_name2)}"

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{names_pairs}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
