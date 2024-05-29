
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/4EJN.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/4EJN.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [341,1665,531,1612,1660,1661,1644,1642,1643,1842,525,526,557,558,1843,1844,536,537,538,539,540,541,542,543,544,1137,1122,1132,563,574,1871,559,1872,1873,1929,1930,1887,1857,1858,1859,1860,1861,1864,1868,560,1862,338,350,352,1686,349,1689,1688,2056,2057,105,106,2040,2029,2034,337,573,575,578,589,347,348,260,590,591,592,87,88,198,263,264,267,170,527,1130,1672,1685,1684,1932,1927,1931,1933,1928,1833,1675,1677,1696,1611,1175,1178,1136,1697,1698,1699,1716,1732,1741,1940,1733,1740,1838,1839,1841,1845,1825,1179,1182,1847,1848,1849,1856,886] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1772,1779,1773,2797,1790,1339,1340,1344,1351,2884,2885,1781,2888,1322,1323,1324,1821,1820,1326,1154,1156,1329,1330] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2774,2776,2778,1600,2749,2773,2775,1569,1597,1637,1592,1567,1571,2772,2731,2743,2651] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1852,874,1854,1335,878,1366,1367,1368,1337,1756,1728] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2042,2048,2049,2050,2059,2060,2046,306,309,2068,324,2063,2071,2543,2540,2542,2078,2585,2589,2545,2546,2067,2074] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        