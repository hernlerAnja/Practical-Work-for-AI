
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
        
        load "data/5NKB.pdb", protein
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
 
        load "data/5NKB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [170,1180,282,419,444,523,653,265,675,652,280,281,286,394,392,143,152,153,296,171,268,274,278,637,389,1254,1255,1248,1249,1225,1218,1219,1250,1251,1252,1253,1217,148,145,358,361,357,382,388,356,384,387,354,1244,129,114,120,116,115,118,1099,1100,1101,1172,1173,1079,679,1084,1175,1178,1179,1181,704,708,1070,678,701,1258,1259,1261] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [873,838,860,861,862,863,1134,1126,507,508,909,910,498,1138,893,930,1144,500,1140,1145,901,903] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1482,1483,1484,1485,1477,1478,1479,1480,1486,1487,1490,2013,2072,976,983,2061,975,999,2053,2056,2058,2059,2060] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [497,499,1116,1130,1145,691,666,661,1160,533] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1739,1768,1741,1742,1744,1745,1746,1767,1769,1417,1393,1428,1347,1380,1416,1775,1778] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1793,1794,1795,1805,1762,1796,1797,1799,1798,1682,1827,1659,1664,1699,1661,1698,1700,1666] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        