
namespace gregSharp.Repositories;
public class HousesRepository
{
  private readonly IDbConnection _db;

  public HousesRepository(IDbConnection db)
  {
    _db = db;
  }

  internal List<House> Get()
  {
    string sql = @"
    SELECT 
    *
    FROM houses;
    ";
    List<House> houses = _db.Query<House>(sql).ToList();
    return houses;
  }


  internal House Create(House houseData)
  {
    string sql = @"
    INSERT INTO houses
    (squareft, price, description, bathrooms, floors, imgUrl)
    Values
    (@squareft, @price, @description, @bathrooms, @floors, @imgUrl);

    SELECT LAST_INSERT_ID();
    ";
    int id = _db.ExecuteScalar<int>(sql, houseData);
    houseData.id = id;
    return houseData;
  }

  internal bool Remove(int id)
  {
    string sql = @"
    DELETE FROM houses
    WHERE id = @id
    ";
    int rows = _db.Execute(sql, new { id });
    return rows > 0;
  }

  internal House GetOneHouse(int id)
  {
    string sql = @"
    SELECT
    *
    FROM houses
    WHERE id = @id;
    ";
    House house = _db.Query<House>(sql, new { id }).FirstOrDefault();
    return house;
  }

  internal bool Update(House original)
  {
    string sql = @"
    UPDATE houses
    SET
    squareft = @squareft,
    price = @price,
    description = @description,
    bathrooms = @bathrooms,
    floors = @floors,
    imgUrl = @imgUrl
    WHERE id = @id;
    ";
    int rows = _db.Execute(sql, original);
    return rows > 0;
  }
}
