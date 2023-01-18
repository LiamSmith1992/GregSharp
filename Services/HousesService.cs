
namespace gregSharp.Services;

public class HousesService
{
  private readonly HousesRepository _repo;

  public HousesService(HousesRepository repo)
  {
    _repo = repo;
  }

  internal List<House> Get()
  {
    List<House> houses = _repo.Get();
    return houses;
  }

  internal House Create(House houseData)
  {
    House house = _repo.Create(houseData);
    return house;
  }

  internal string Remove(int id)
  {

    House house = GetOneHouse(id);
    bool deleted = _repo.Remove(id);
    return $"{house.description} was deleted";
  }

  internal House GetOneHouse(int id)
  {
    House house = _repo.GetOneHouse(id);
    if (house == null)
    {
      throw new Exception("nada house up in here with that id");
    }
    return house;
  }

  internal House Update(House houseUpdate, int id)
  {
    House original = GetOneHouse(id);
    original.bathrooms = houseUpdate.bathrooms ?? original.bathrooms;
    original.description = houseUpdate.description ?? original.description;
    original.floors = houseUpdate.floors ?? original.floors;
    original.imgUrl = houseUpdate.imgUrl ?? original.imgUrl;
    original.price = houseUpdate.price ?? original.price;
    original.squareft = houseUpdate.squareft ?? original.squareft;

    bool edited = _repo.Update(original);
    if (edited == false)
    {
      throw new Exception("house was not edited ");

    }
    return original;

  }
}
