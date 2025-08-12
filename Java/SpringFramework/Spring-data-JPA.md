# <p align="center"> Spring Data JPA </p>
---

### Quick recap:
* **Owning side:** The side that controls the relationship and usually contains the foreign key column.
* **Inverse side (mappedBy side):** The side that maps the relationship but doesn't own it.

### Where to put fetch = FetchType.LAZY or EAGER?
**You put the fetch type on the side where the collection or association is declared.**
* For `@OneToMany` or `@ManyToMany` **collections** (which are usually on the inverse side), **the fetch type defaults to LAZY**.
* For` @ManyToOne` or `@OneToOne` (usually on the owning side), **the fetch type defaults to EAGER*

**Example with Instructor and Course:**
```java
@Entity
public class Instructor {

    @OneToMany(mappedBy = "instructor", fetch = FetchType.LAZY)  // inverse side: collection side
    private List<Course> courses;

    // ...
}

@Entity
public class Course {

    @ManyToOne(fetch = FetchType.EAGER)  // owning side: holds foreign key
    @JoinColumn(name = "instructor_id")
    private Instructor instructor;

    // ...
}
```

| Relationship Type | Owning Side | Inverse Side (mappedBy) | Default Fetch Type | Where to specify fetch?                      |
| ----------------- | ----------- | ----------------------- | ------------------ | -------------------------------------------- |
| `@OneToMany`      | N/A         | The collection side     | LAZY               | On the collection field (inverse side)       |
| `@ManyToOne`      | Owning side | N/A                     | EAGER              | On the owning side field                     |
| `@ManyToMany`     | Either side | Other side mappedBy     | LAZY               | On the side where the collection is declared |
| `@OneToOne`       | Owning side | MappedBy side           | EAGER              | On the owning or inverse side field          |

